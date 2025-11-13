.class public final Lcom/google/android/material/datepicker/TimeSource;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SYSTEM_TIME_SOURCE:Lcom/google/android/material/datepicker/TimeSource;


# instance fields
.field public final fixedTimeMs:Ljava/lang/Long;

.field public final fixedTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/material/datepicker/TimeSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/material/datepicker/TimeSource;-><init>(Ljava/lang/Long;Ljava/util/TimeZone;)V

    sput-object v0, Lcom/google/android/material/datepicker/TimeSource;->SYSTEM_TIME_SOURCE:Lcom/google/android/material/datepicker/TimeSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/util/TimeZone;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/TimeSource;->fixedTimeMs:Ljava/lang/Long;

    iput-object p2, p0, Lcom/google/android/material/datepicker/TimeSource;->fixedTimeZone:Ljava/util/TimeZone;

    return-void
.end method
