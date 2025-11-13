.class public abstract Lkotlin/time/Duration;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final INFINITE:J

.field public static final NEG_INFINITE:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lkotlin/time/Duration;->INFINITE:J

    const-wide v0, -0x7ffffffffffffffdL    # -1.5E-323

    sput-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    return-void
.end method
