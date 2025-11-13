.class public final Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public navigationBarModel:Lcom/android/systemui/statusbar/phone/NavigationBarModel;

.field public statusBarModel:Lcom/android/systemui/statusbar/phone/StatusBarModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-void
.end method


# virtual methods
.method public final updateStatusBarModel(Ljava/lang/String;ILjava/util/ArrayList;I)V
    .locals 11

    new-instance v10, Lcom/android/systemui/statusbar/phone/StatusBarModel;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, ""

    const/16 v8, 0x60

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/StatusBarModel;-><init>(Ljava/lang/String;ILjava/util/ArrayList;ILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->statusBarModel:Lcom/android/systemui/statusbar/phone/StatusBarModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v10}, Lcom/android/systemui/statusbar/phone/StatusBarModel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->statusBarModel:Lcom/android/systemui/statusbar/phone/StatusBarModel;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "updateStatusBar "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SamsungLightBarControlHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
