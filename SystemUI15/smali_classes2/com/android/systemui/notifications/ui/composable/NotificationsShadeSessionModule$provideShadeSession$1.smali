.class public final Lcom/android/systemui/notifications/ui/composable/NotificationsShadeSessionModule$provideShadeSession$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/scene/session/ui/composable/SaveableSession;


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/systemui/scene/session/ui/composable/SessionImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/scene/session/shared/SessionStorage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Lcom/android/systemui/scene/session/ui/composable/SessionImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/scene/session/ui/composable/SessionImpl;-><init>(Lcom/android/systemui/scene/session/shared/SessionStorage;)V

    return-void
.end method
