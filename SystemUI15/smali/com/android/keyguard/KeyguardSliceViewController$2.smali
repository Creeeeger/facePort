.class public final Lcom/android/keyguard/KeyguardSliceViewController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSliceViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSliceViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController$2;->this$0:Lcom/android/keyguard/KeyguardSliceViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/slice/Slice;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceViewController$2;->this$0:Lcom/android/keyguard/KeyguardSliceViewController;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mSlice:Landroidx/slice/Slice;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSliceViewController;->showSlice(Landroidx/slice/Slice;)V

    return-void
.end method
