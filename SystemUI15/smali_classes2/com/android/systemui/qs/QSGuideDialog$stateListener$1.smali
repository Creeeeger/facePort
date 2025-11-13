.class public final Lcom/android/systemui/qs/QSGuideDialog$stateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSGuideDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSGuideDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSGuideDialog$stateListener$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/QSGuideDialog$stateListener$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    iget v0, p0, Lcom/android/systemui/qs/QSGuideDialog;->statusBarState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/QSGuideDialog;->statusBarState:I

    return-void
.end method
