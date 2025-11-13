.class public final Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl$userTrackerCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl$userTrackerCallback$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProfilesChanged(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl$userTrackerCallback$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->handleProfileChanged$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    return-void
.end method

.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl$userTrackerCallback$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->handleUserSwitched$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    return-void
.end method
