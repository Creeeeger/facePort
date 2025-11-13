.class public final Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$Empty;
.super Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$Empty;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$Empty;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$Empty;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$Empty;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState;-><init>(Landroid/graphics/drawable/Icon;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/BigPictureIconManager$DrawableState$Empty;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x15429971

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Empty"

    return-object p0
.end method
