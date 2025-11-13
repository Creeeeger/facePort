.class public final Lcom/android/compose/animation/scene/Back;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/UserAction;


# static fields
.field public static final INSTANCE:Lcom/android/compose/animation/scene/Back;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/compose/animation/scene/Back;

    invoke-direct {v0}, Lcom/android/compose/animation/scene/Back;-><init>()V

    sput-object v0, Lcom/android/compose/animation/scene/Back;->INSTANCE:Lcom/android/compose/animation/scene/Back;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/android/compose/animation/scene/Back;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x4c3bbbe5

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Back"

    return-object p0
.end method
