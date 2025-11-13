.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$secFgsManagerController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$secFgsManagerController$1;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$secFgsManagerController$1;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method
