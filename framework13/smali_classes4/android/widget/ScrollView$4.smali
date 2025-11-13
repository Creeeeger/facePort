.class Landroid/widget/ScrollView$4;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ScrollView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ScrollView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ScrollView;

    .line 3180
    iput-object p1, p0, Landroid/widget/ScrollView$4;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 3182
    iget-object v0, p0, Landroid/widget/ScrollView$4;->this$0:Landroid/widget/ScrollView;

    invoke-static {v0}, Landroid/widget/ScrollView;->-$$Nest$msemPlayGoToTopFadeIn(Landroid/widget/ScrollView;)V

    .line 3183
    return-void
.end method
