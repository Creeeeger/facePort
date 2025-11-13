.class final Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilderLogger$devLoggingEnabled$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $notifPipelineFlags:Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilderLogger$devLoggingEnabled$2;->$notifPipelineFlags:Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilderLogger$devLoggingEnabled$2;->$notifPipelineFlags:Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
