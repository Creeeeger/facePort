.class public final Lcom/android/systemui/statusbar/notification/icon/ui/viewbinder/NotificationIconAreaControllerViewBinderWrapperImpl$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/icon/ui/viewbinder/NotificationIconAreaControllerViewBinderWrapperImpl$Companion;-><init>()V

    return-void
.end method

.method public static getUnsupported()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Code path not supported when com.android.systemui.notifications_icon_container_refactor is disabled"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
