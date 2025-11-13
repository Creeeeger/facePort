.class Landroid/app/Activity$2;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Landroid/app/Activity$TranslucentConversionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->semConvertToTranslucent(Landroid/app/Activity$SemTranslucentConversionListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/Activity;

.field final synthetic blacklist val$callback:Landroid/app/Activity$SemTranslucentConversionListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/Activity;Landroid/app/Activity$SemTranslucentConversionListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/Activity;

    .line 7884
    iput-object p1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    iput-object p2, p0, Landroid/app/Activity$2;->val$callback:Landroid/app/Activity$SemTranslucentConversionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTranslucentConversionComplete(Z)V
    .locals 1
    .param p1, "drawComplete"    # Z

    .line 7887
    iget-object v0, p0, Landroid/app/Activity$2;->val$callback:Landroid/app/Activity$SemTranslucentConversionListener;

    if-eqz v0, :cond_0

    .line 7888
    invoke-interface {v0, p1}, Landroid/app/Activity$SemTranslucentConversionListener;->onTranslucentConversionCompleted(Z)V

    .line 7890
    :cond_0
    return-void
.end method
