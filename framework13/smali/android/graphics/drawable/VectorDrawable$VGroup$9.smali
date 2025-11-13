.class Landroid/graphics/drawable/VectorDrawable$VGroup$9;
.super Ljava/util/HashMap;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable$VGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Landroid/util/Property;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 1362
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1364
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-$$Nest$sfgetTRANSLATE_X()Landroid/util/Property;

    move-result-object v0

    const-string/jumbo v1, "translateX"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-$$Nest$sfgetTRANSLATE_Y()Landroid/util/Property;

    move-result-object v0

    const-string/jumbo v1, "translateY"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-$$Nest$sfgetSCALE_X()Landroid/util/Property;

    move-result-object v0

    const-string/jumbo v1, "scaleX"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-$$Nest$sfgetSCALE_Y()Landroid/util/Property;

    move-result-object v0

    const-string/jumbo v1, "scaleY"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-$$Nest$sfgetPIVOT_X()Landroid/util/Property;

    move-result-object v0

    const-string/jumbo v1, "pivotX"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-$$Nest$sfgetPIVOT_Y()Landroid/util/Property;

    move-result-object v0

    const-string/jumbo v1, "pivotY"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-$$Nest$sfgetROTATION()Landroid/util/Property;

    move-result-object v0

    const-string/jumbo v1, "rotation"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    return-void
.end method
