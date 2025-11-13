.class public final synthetic Lcom/samsung/android/multiwindow/OverlayHandlerView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$$ExternalSyntheticLambda0;->f$0:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/OverlayHandlerView$$ExternalSyntheticLambda0;->f$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/OverlayHandlerView;->lambda$checkShowingImeAndHideIfNeeded$4(Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method
