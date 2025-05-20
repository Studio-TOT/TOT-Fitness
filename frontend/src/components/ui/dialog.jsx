import React, { createContext, useContext, useState, useRef } from "react";
import { Dialog as HeadlessDialog, Transition } from "@headlessui/react";

const DialogContext = createContext();

export function Dialog({ children }) {
    const [open, setOpen] = useState(false);
    const triggerRef = useRef();
    return (
        <DialogContext.Provider value={{ open, setOpen, triggerRef }}>
            {children}
            <Transition.Root show={open} as={React.Fragment}>
                <HeadlessDialog as="div" className="relative z-50" onClose={setOpen} initialFocus={triggerRef}>
                    <Transition.Child
                        as={React.Fragment}
                        enter="ease-out duration-300"
                        enterFrom="opacity-0"
                        enterTo="opacity-100"
                        leave="ease-in duration-200"
                        leaveFrom="opacity-100"
                        leaveTo="opacity-0"
                    >
                        <div className="fixed inset-0 bg-black/30 backdrop-blur-sm transition-opacity" />
                    </Transition.Child>
                    <div className="fixed inset-0 z-50 flex items-center justify-center p-4">
                        <Transition.Child
                            as={React.Fragment}
                            enter="ease-out duration-300"
                            enterFrom="opacity-0 scale-95"
                            enterTo="opacity-100 scale-100"
                            leave="ease-in duration-200"
                            leaveFrom="opacity-100 scale-100"
                            leaveTo="opacity-0 scale-95"
                        >
                            <HeadlessDialog.Panel className="w-full max-w-md transform overflow-hidden rounded-2xl bg-white p-6 text-left align-middle shadow-xl transition-all">
                                <DialogContentInternal />
                            </HeadlessDialog.Panel>
                        </Transition.Child>
                    </div>
                </HeadlessDialog>
            </Transition.Root>
        </DialogContext.Provider>
    );
}

export function DialogTrigger({ asChild, children }) {
    const { setOpen, triggerRef } = useContext(DialogContext);
    if (asChild && React.isValidElement(children)) {
        return React.cloneElement(children, {
            ref: triggerRef,
            onClick: (e) => {
                if (children.props.onClick) children.props.onClick(e);
                setOpen(true);
            },
        });
    }
    return (
        <button ref={triggerRef} onClick={() => setOpen(true)}>{children}</button>
    );
}

let dialogContent = null;
function DialogContentInternal() {
    return dialogContent;
}

export function DialogContent({ children }) {
    dialogContent = children;
    return null;
}

export function DialogHeader({ children }) {
    return <div className="mb-4">{children}</div>;
}

export function DialogTitle({ children }) {
    return <h2 className="text-lg font-semibold mb-2">{children}</h2>;
}

export function DialogDescription({ children }) {
    return <p className="text-gray-600 mb-4">{children}</p>;
}

export function DialogFooter({ children }) {
    return <div className="mt-6 flex justify-end gap-2">{children}</div>;
} 