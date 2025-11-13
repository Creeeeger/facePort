.class public abstract Lcom/samsung/context/sdk/samsunganalytics/internal/util/ClientUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SALT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/NativeHelper;->getSALTKey()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/ClientUtil;->SALT:Ljava/lang/String;

    return-void
.end method
