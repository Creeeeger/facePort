.class public final Lcom/android/systemui/util/drawable/DrawableSize;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x0

.field public static final Companion:Lcom/android/systemui/util/drawable/DrawableSize$Companion;

.field public static final TAG:Ljava/lang/String; = "SysUiDrawableSize"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/util/drawable/DrawableSize$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/util/drawable/DrawableSize$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/util/drawable/DrawableSize;->Companion:Lcom/android/systemui/util/drawable/DrawableSize$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final downscaleToSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/drawable/DrawableSize;->Companion:Lcom/android/systemui/util/drawable/DrawableSize$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/systemui/util/drawable/DrawableSize$Companion;->downscaleToSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
