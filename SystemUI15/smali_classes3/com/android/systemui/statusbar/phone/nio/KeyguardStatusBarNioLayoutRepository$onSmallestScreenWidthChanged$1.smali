.class public final Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onSmallestScreenWidthChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onSmallestScreenWidthChanged$1;->this$0:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onSmallestScreenWidthChanged$1;->this$0:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    const-string v1, "onSmallestScreenWidthChanged()"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->printLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onSmallestScreenWidthChanged$1;->this$0:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    new-instance v1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onSmallestScreenWidthChanged$1$1$1;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$onSmallestScreenWidthChanged$1$1$1;-><init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->updateValues(Ljava/lang/Runnable;)V

    return-void
.end method
