.class final Landroid/inputmethodservice/SemSpenGestureManagerWrapper;
.super Ljava/lang/Object;
.source "SemSpenGestureManagerWrapper.java"


# static fields
.field static blacklist mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/inputmethodservice/SemSpenGestureManagerWrapper;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist notifyKeyboardClosedForAGIF(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Landroid/inputmethodservice/SemSpenGestureManagerWrapper;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-nez v0, :cond_0

    const-string v0, "spengestureservice"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    sput-object v0, Landroid/inputmethodservice/SemSpenGestureManagerWrapper;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    :cond_0
    const-string v0, "InputMethodService"

    const-string v1, "notifyKeyboardClosed called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/inputmethodservice/SemSpenGestureManagerWrapper;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/inputmethodservice/SemSpenGestureManagerWrapper;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->notifyKeyboardClosed()V

    :cond_1
    return-void
.end method
