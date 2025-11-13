.class public final enum Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GET_CONFIG_TEMPLATE_CONTENTS:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

.field public static final enum GET_CURRENT_PARAM:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

.field public static final enum GET_ERROR_DIALOG_CONTENTS:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

.field public static final enum GET_LABEL_PARAM:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

.field public static final enum GET_PREVIEW_IMAGE_FILE_DESCRIPTOR:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

.field public static final enum IS_SUPPORT:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

.field public static final enum IS_VALID:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

.field public static final enum PERFORM_ACTION:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

.field public static final enum RECOVER_ACTION:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

.field public static final synthetic b:[Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string/jumbo v3, "unknown"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->UNKNOWN:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    .line 3
    new-instance v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    const-string v3, "GET_CURRENT_PARAM"

    const/4 v4, 0x1

    const-string v5, "getCurrentParam"

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->GET_CURRENT_PARAM:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    .line 4
    new-instance v3, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    const-string v5, "PERFORM_ACTION"

    const/4 v6, 0x2

    const-string/jumbo v7, "performAction"

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->PERFORM_ACTION:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    .line 5
    new-instance v5, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    const-string v7, "RECOVER_ACTION"

    const/4 v8, 0x3

    const-string/jumbo v9, "recoverAction"

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->RECOVER_ACTION:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    .line 6
    new-instance v7, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    const-string v9, "GET_LABEL_PARAM"

    const/4 v10, 0x4

    const-string v11, "getLabelParam"

    invoke-direct {v7, v9, v10, v11}, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->GET_LABEL_PARAM:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    .line 7
    new-instance v9, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    const-string v11, "GET_PREVIEW_IMAGE_FILE_DESCRIPTOR"

    const/4 v12, 0x5

    const-string v13, "getPreviewImageFileDescriptor"

    invoke-direct {v9, v11, v12, v13}, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->GET_PREVIEW_IMAGE_FILE_DESCRIPTOR:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    .line 8
    new-instance v11, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    const-string v13, "IS_VALID"

    const/4 v14, 0x6

    const-string v15, "isValid"

    invoke-direct {v11, v13, v14, v15}, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->IS_VALID:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    .line 9
    new-instance v13, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    const-string v15, "IS_SUPPORT"

    const/4 v14, 0x7

    const-string v12, "isSupport"

    invoke-direct {v13, v15, v14, v12}, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->IS_SUPPORT:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    .line 10
    new-instance v12, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    const-string v15, "GET_CONFIG_TEMPLATE_CONTENTS"

    const/16 v14, 0x8

    const-string v10, "getConfigTemplateContents"

    invoke-direct {v12, v15, v14, v10}, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->GET_CONFIG_TEMPLATE_CONTENTS:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    .line 11
    new-instance v10, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    const-string v15, "GET_ERROR_DIALOG_CONTENTS"

    const/16 v14, 0x9

    const-string v8, "getErrorDialogContents"

    invoke-direct {v10, v15, v14, v8}, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->GET_ERROR_DIALOG_CONTENTS:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    .line 12
    sput-object v8, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->b:[Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->values()[Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionMethod.fromValue - not supported value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActionMethod"

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->UNKNOWN:Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->b:[Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/routines/v3/internal/ActionMethod;

    return-object v0
.end method
