.class Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$KnoxsdkFileLogHolder;
.super Ljava/lang/Object;
.source "KnoxsdkFileLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KnoxsdkFileLogHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;-><init>(Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog-IA;)V

    sput-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$KnoxsdkFileLogHolder;->INSTANCE:Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;

    return-void
.end method
