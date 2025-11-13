.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$7;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$7;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-boolean v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mListening:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mListening:Z

    iget-object v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessController$1;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$7;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    iget-object v0, v0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$7;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    :goto_0
    return-void
.end method
