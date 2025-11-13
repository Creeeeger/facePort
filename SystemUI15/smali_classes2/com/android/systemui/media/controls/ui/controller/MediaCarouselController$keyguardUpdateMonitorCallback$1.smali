.class public final Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStrongAuthStateChanged(I)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger;

    const-string v2, "MediaCarouselCtlrLog"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger$logCarouselHidden$2;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger$logCarouselHidden$2;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger$logCarouselVisible$2;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger$logCarouselVisible$2;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
