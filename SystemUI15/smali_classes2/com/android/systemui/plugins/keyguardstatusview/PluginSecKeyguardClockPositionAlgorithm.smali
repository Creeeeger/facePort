.class public interface abstract Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/SupportVersionChecker;
.end annotation


# static fields
.field public static final NOTIFICATION_CARD:I = 0x0

.field public static final NOTIFICATION_ICON:I = 0x1

.field public static final NOTIFICATION_TYPO:I = 0x2


# virtual methods
.method public abstract getBottomMarginY()I
.end method

.method public abstract getMinStackScrollerPadding()F
.end method

.method public abstract isPanelExpanded()Z
.end method

.method public abstract loadDimens()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3ed
    .end annotation
.end method

.method public abstract run(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setup(IIIFIIIZZFFZIIILjava/util/function/Supplier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIFIIIZZFFZIII",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation
.end method
