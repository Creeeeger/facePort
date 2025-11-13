.class public final enum Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;
.super Ljava/lang/Enum;
.source "FragmentStrictMode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/strictmode/FragmentStrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

.field public static final enum DETECT_FRAGMENT_REUSE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

.field public static final enum DETECT_FRAGMENT_TAG_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

.field public static final enum DETECT_RETAIN_INSTANCE_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

.field public static final enum DETECT_SET_USER_VISIBLE_HINT:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

.field public static final enum DETECT_TARGET_FRAGMENT_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

.field public static final enum DETECT_WRONG_FRAGMENT_CONTAINER:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

.field public static final enum PENALTY_DEATH:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

.field public static final enum PENALTY_LOG:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    new-instance v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    const-string v2, "PENALTY_LOG"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_LOG:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    aput-object v1, v0, v3

    new-instance v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    const-string v2, "PENALTY_DEATH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_DEATH:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    aput-object v1, v0, v3

    new-instance v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    const-string v2, "DETECT_FRAGMENT_REUSE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_FRAGMENT_REUSE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    aput-object v1, v0, v3

    new-instance v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    const-string v2, "DETECT_FRAGMENT_TAG_USAGE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_FRAGMENT_TAG_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    aput-object v1, v0, v3

    new-instance v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    const-string v2, "DETECT_RETAIN_INSTANCE_USAGE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_RETAIN_INSTANCE_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    aput-object v1, v0, v3

    new-instance v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    const-string v2, "DETECT_SET_USER_VISIBLE_HINT"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_SET_USER_VISIBLE_HINT:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    aput-object v1, v0, v3

    new-instance v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    const-string v2, "DETECT_TARGET_FRAGMENT_USAGE"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_TARGET_FRAGMENT_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    aput-object v1, v0, v3

    new-instance v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    const-string v2, "DETECT_WRONG_FRAGMENT_CONTAINER"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_WRONG_FRAGMENT_CONTAINER:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    aput-object v1, v0, v3

    sput-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->$VALUES:[Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 281
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;
    .locals 1

    const-class v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;
    .locals 1

    sget-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->$VALUES:[Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-virtual {v0}, [Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    return-object v0
.end method
