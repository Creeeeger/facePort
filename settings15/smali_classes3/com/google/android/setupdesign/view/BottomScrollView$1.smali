.class public final Lcom/google/android/setupdesign/view/BottomScrollView$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/google/android/setupdesign/view/BottomScrollView;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/view/BottomScrollView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView$1;->this$0:Lcom/google/android/setupdesign/view/BottomScrollView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/setupdesign/view/BottomScrollView$1;->this$0:Lcom/google/android/setupdesign/view/BottomScrollView;

    sget v0, Lcom/google/android/setupdesign/view/BottomScrollView;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/BottomScrollView;->checkScroll()V

    return-void
.end method
