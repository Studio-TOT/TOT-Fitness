import React, { createContext, useContext, useState } from "react";
import { Popover, Transition } from "@headlessui/react";

const HoverCardContext = createContext();

export function HoverCard({ children }) {
    const [open, setOpen] = useState(false);
    return (
        <HoverCardContext.Provider value={{ open, setOpen }}>
            <Popover className="relative">
                {({ open: isOpen }) => {
                    // Update our internal state when Popover state changes
                    if (isOpen !== open) {
                        setOpen(isOpen);
                    }
                    return children;
                }}
            </Popover>
        </HoverCardContext.Provider>
    );
}

export function HoverCardTrigger({ asChild, children }) {
    const { setOpen } = useContext(HoverCardContext);

    if (asChild && React.isValidElement(children)) {
        return React.cloneElement(children, {
            onMouseEnter: () => setOpen(true),
            onMouseLeave: () => setOpen(false),
        });
    }

    return (
        <span
            onMouseEnter={() => setOpen(true)}
            onMouseLeave={() => setOpen(false)}
        >
            {children}
        </span>
    );
}

export function HoverCardContent({ children, className = "" }) {
    const { open } = useContext(HoverCardContext);

    return (
        <Transition
            show={open}
            as={React.Fragment}
            enter="transition ease-out duration-200"
            enterFrom="opacity-0 translate-y-1"
            enterTo="opacity-100 translate-y-0"
            leave="transition ease-in duration-150"
            leaveFrom="opacity-100 translate-y-0"
            leaveTo="opacity-0 translate-y-1"
        >
            <div className={`absolute z-20 mt-2 w-80 rounded-xl bg-white p-4 shadow-lg ring-1 ring-black/5 ${className}`}>
                {children}
            </div>
        </Transition>
    );
} 