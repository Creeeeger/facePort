.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$topOngoingSectioner$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$topOngoingSectioner$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;

    const-string p1, "TopOngoing"

    const/16 v0, 0xe

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public isInSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 0

    sget-object p0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget p1, Lcom/android/systemui/statusbar/notification/shared/NotificationMinimalismPrototype$V2;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationMinimalismPrototype()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "New code path expects com.android.systemui.notification_minimalism_prototype to be enabled."

    invoke-static {p0}, Lcom/android/systemui/flags/RefactorFlagUtils;->assertOnEngBuild(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
