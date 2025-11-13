.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$6;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$6;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-boolean v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mListening:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mListening:Z

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$6;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object v2, v2, Lcom/android/systemui/qp/SubscreenBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/qp/util/SubscreenUtil;->getSubDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$6;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-wide/16 v2, 0x8

    iget-object v4, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessController$1;

    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mHandler:Lcom/android/systemui/qp/SubscreenBrightnessController$3;

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$6;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSeekListener:Lcom/android/systemui/qp/SubscreenBrightnessController$4;

    iget-object v1, v1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$6;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    :goto_0
    return-void
.end method
