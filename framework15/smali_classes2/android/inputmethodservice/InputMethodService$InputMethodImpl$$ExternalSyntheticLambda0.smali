.class public final synthetic Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda0;->f$0:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda0;->f$0:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {v0, p1}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->$r8$lambda$FPjtkHgjCUg1jypfNJ5RJkn2tjI(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;Landroid/view/MotionEvent;)V

    return-void
.end method
