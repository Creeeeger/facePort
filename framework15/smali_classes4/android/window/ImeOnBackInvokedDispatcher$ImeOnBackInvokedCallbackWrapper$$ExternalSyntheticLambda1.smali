.class public final synthetic Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/OnBackInvokedCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/OnBackInvokedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/window/OnBackInvokedCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    return-void
.end method
