.class public final Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$KnoxsdkFileLogHolder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnoxsdkFileLogHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;

    invoke-direct {v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$KnoxsdkFileLogHolder;->INSTANCE:Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
