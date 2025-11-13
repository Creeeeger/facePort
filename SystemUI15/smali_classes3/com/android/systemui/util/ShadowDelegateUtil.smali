.class public final Lcom/android/systemui/util/ShadowDelegateUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/android/systemui/util/ShadowDelegateUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/ShadowDelegateUtil;

    invoke-direct {v0}, Lcom/android/systemui/util/ShadowDelegateUtil;-><init>()V

    sput-object v0, Lcom/android/systemui/util/ShadowDelegateUtil;->INSTANCE:Lcom/android/systemui/util/ShadowDelegateUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createShadowDrawable(Landroid/graphics/drawable/Drawable;FFI)Landroid/graphics/drawable/Drawable;
    .locals 6

    new-instance p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;

    new-instance v1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    const/4 v0, 0x0

    invoke-direct {v1, p2, v0, v0, p3}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    new-instance v2, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    invoke-direct {v2, p2, v0, v0, v0}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;-><init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/graphics/drawable/Drawable;II)V

    return-object p0
.end method
