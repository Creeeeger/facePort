.class public interface abstract Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Companion;->$$INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Companion;

    sput-object v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->Companion:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Companion;

    return-void
.end method


# virtual methods
.method public abstract addListener(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;)V
.end method

.method public abstract addResumptionControls(ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
.end method

.method public abstract dismissMediaData(Ljava/lang/String;JZ)Z
.end method

.method public abstract dismissSmartspaceRecommendation(Ljava/lang/String;J)V
.end method

.method public abstract hasActiveMediaOrRecommendation()Z
.end method

.method public abstract hasAnyMediaOrRecommendation()Z
.end method

.method public abstract isRecommendationActive()Z
.end method

.method public abstract onNotificationAdded(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract onNotificationRemoved(Ljava/lang/String;)V
.end method

.method public abstract onSwipeToDismiss()V
.end method

.method public abstract removeListener(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;)V
.end method

.method public abstract setInactive(Ljava/lang/String;ZZ)V
.end method

.method public abstract setMediaResumptionEnabled(Z)V
.end method

.method public abstract setResumeAction(Ljava/lang/Runnable;Ljava/lang/String;)V
.end method
