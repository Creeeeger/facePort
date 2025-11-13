.class public final Lcom/android/systemui/statusbar/notification/icon/IconManager$sensitivityListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$OnSensitivityChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/icon/IconManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/icon/IconManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager$sensitivityListener$1;->this$0:Lcom/android/systemui/statusbar/notification/icon/IconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSensitivityChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager$sensitivityListener$1;->this$0:Lcom/android/systemui/statusbar/notification/icon/IconManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->updateIcons(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lkotlin/Unit;
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "IconManager"

    const-string v0, "Unable to update icon"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
