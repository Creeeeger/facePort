.class public final Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$22;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/demomode/DemoMode;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$22;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onDemoModeFinished()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$22;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->checkBarModes$1()V

    return-void
.end method
