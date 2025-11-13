.class public interface abstract Lcom/android/systemui/aibrief/AiBriefManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/aibrief/AiBriefManager$Companion;

.field public static final NOW_BAR_VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/aibrief/AiBriefManager$Companion;->$$INSTANCE:Lcom/android/systemui/aibrief/AiBriefManager$Companion;

    sput-object v0, Lcom/android/systemui/aibrief/AiBriefManager;->Companion:Lcom/android/systemui/aibrief/AiBriefManager$Companion;

    return-void
.end method


# virtual methods
.method public abstract createNowBar(Landroid/os/Bundle;)V
.end method

.method public abstract createRemoteNowBar(Landroid/os/Bundle;)V
.end method

.method public abstract findSportsScoreRemoteViews(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract hideNotification()V
.end method

.method public abstract hideNowBar()V
.end method

.method public abstract hideRemoteNowBar()V
.end method

.method public abstract showNotification()V
.end method

.method public abstract showNowBar(Landroid/view/View;Landroid/view/View;)V
.end method

.method public abstract showReport()V
.end method

.method public abstract updateNowBarNeedToUnlock(Landroid/os/Bundle;)V
.end method
