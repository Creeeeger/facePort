.class public final Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$KnoxsdkFileLogHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;-><init>(I)V

    sput-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$KnoxsdkFileLogHolder;->INSTANCE:Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
