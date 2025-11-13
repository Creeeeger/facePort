.class public final Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$createMyUserIdProvider$1;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$MyUserIdProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$createMyUserIdProvider$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;

    invoke-direct {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$MyUserIdProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMyUserId()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$createMyUserIdProvider$1;->this$0:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;->getHostUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method
