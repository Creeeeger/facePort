.class final Landroid/content/res/Resources$submitToFuture;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "submitToFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/graphics/drawable/Drawable$ConstantState;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist density:I

.field private blacklist id:I

.field private blacklist key:J

.field final synthetic blacklist this$0:Landroid/content/res/Resources;


# direct methods
.method public constructor blacklist <init>(Landroid/content/res/Resources;IIJ)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "density"    # I
    .param p4, "key"    # J

    .line 2933
    iput-object p1, p0, Landroid/content/res/Resources$submitToFuture;->this$0:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2934
    iput p2, p0, Landroid/content/res/Resources$submitToFuture;->id:I

    .line 2935
    iput p3, p0, Landroid/content/res/Resources$submitToFuture;->density:I

    .line 2936
    iput-wide p4, p0, Landroid/content/res/Resources$submitToFuture;->key:J

    .line 2937
    return-void
.end method


# virtual methods
.method public blacklist call()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2941
    invoke-static {}, Landroid/content/res/Resources;->-$$Nest$sfgetsStartedRunnablesMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/res/Resources$submitToFuture;->key:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2942
    iget-object v0, p0, Landroid/content/res/Resources$submitToFuture;->this$0:Landroid/content/res/Resources;

    invoke-static {v0}, Landroid/content/res/Resources;->-$$Nest$mobtainTempTypedValue(Landroid/content/res/Resources;)Landroid/util/TypedValue;

    move-result-object v0

    .line 2944
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources$submitToFuture;->this$0:Landroid/content/res/Resources;

    invoke-static {v1}, Landroid/content/res/Resources;->-$$Nest$fgetmResourcesImpl(Landroid/content/res/Resources;)Landroid/content/res/ResourcesImpl;

    move-result-object v1

    .line 2945
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    iget v3, p0, Landroid/content/res/Resources$submitToFuture;->id:I

    iget v4, p0, Landroid/content/res/Resources$submitToFuture;->density:I

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/content/res/ResourcesImpl;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 2946
    iget-object v2, p0, Landroid/content/res/Resources$submitToFuture;->this$0:Landroid/content/res/Resources;

    iget v3, p0, Landroid/content/res/Resources$submitToFuture;->id:I

    iget v4, p0, Landroid/content/res/Resources$submitToFuture;->density:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2947
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 2948
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2952
    iget-object v4, p0, Landroid/content/res/Resources$submitToFuture;->this$0:Landroid/content/res/Resources;

    invoke-static {v4, v0}, Landroid/content/res/Resources;->-$$Nest$mreleaseTempTypedValue(Landroid/content/res/Resources;Landroid/util/TypedValue;)V

    .line 2948
    return-object v3

    .line 2950
    :cond_0
    const/4 v3, 0x0

    .line 2952
    iget-object v4, p0, Landroid/content/res/Resources$submitToFuture;->this$0:Landroid/content/res/Resources;

    invoke-static {v4, v0}, Landroid/content/res/Resources;->-$$Nest$mreleaseTempTypedValue(Landroid/content/res/Resources;Landroid/util/TypedValue;)V

    .line 2950
    return-object v3

    .line 2952
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/res/Resources$submitToFuture;->this$0:Landroid/content/res/Resources;

    invoke-static {v2, v0}, Landroid/content/res/Resources;->-$$Nest$mreleaseTempTypedValue(Landroid/content/res/Resources;Landroid/util/TypedValue;)V

    .line 2953
    throw v1
.end method

.method public bridge synthetic whitelist test-api call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2928
    invoke-virtual {p0}, Landroid/content/res/Resources$submitToFuture;->call()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method
