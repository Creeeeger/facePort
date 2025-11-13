.class final Lcom/android/systemui/decor/DebugRoundedCornerDelegate$applyNewDebugCorners$4;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/decor/DebugRoundedCornerDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/decor/DebugRoundedCornerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate$applyNewDebugCorners$4;->this$0:Lcom/android/systemui/decor/DebugRoundedCornerDelegate;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate$applyNewDebugCorners$4;->this$0:Lcom/android/systemui/decor/DebugRoundedCornerDelegate;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->hasBottom:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedSize:Landroid/util/Size;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
