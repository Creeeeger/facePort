.class public final Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$3;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_SUPPORT_STANDALONE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget v0, p2, Landroid/content/res/Configuration;->dexMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$3;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsStandAlone:Z

    if-eq v0, v1, :cond_1

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsStandAlone:Z

    const-string/jumbo v0, "standAlone"

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->updateEnableState(Ljava/lang/String;)V

    :cond_1
    if-nez p1, :cond_2

    iget p1, p2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayDeviceType:I

    :cond_2
    return-void
.end method
