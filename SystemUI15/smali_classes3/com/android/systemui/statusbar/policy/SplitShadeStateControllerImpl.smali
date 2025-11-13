.class public final Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SplitShadeStateController;


# instance fields
.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    return-void
.end method


# virtual methods
.method public final shouldUseSplitNotificationShade()V
    .locals 1

    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
