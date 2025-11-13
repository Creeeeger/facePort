.class public final Lcom/android/wm/shell/bubbles/ManageEducationView$hide$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/ManageEducationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$hide$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$hide$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->isHiding:Z

    return-void
.end method
