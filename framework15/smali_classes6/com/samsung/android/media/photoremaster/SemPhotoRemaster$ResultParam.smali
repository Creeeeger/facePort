.class final enum Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;
.super Ljava/lang/Enum;
.source "SemPhotoRemaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ResultParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

.field public static final enum blacklist AMOUNT_REMASTER_IMAGES:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

.field public static final enum blacklist ANALYZED_FULL:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

.field public static final enum blacklist ENHANCE_TYPE:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

.field public static final enum blacklist ENUM_ENHANCE_TYPE:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

.field public static final enum blacklist FOCUS_ROI:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

.field public static final enum blacklist GIF_SAVE_FORMAT:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

.field public static final enum blacklist JPEG_QUALITY:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

.field public static final enum blacklist OUTPUT_BITMAP:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

.field public static final enum blacklist PATH_INPUT:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

.field public static final enum blacklist PATH_RESULT:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

.field public static final enum blacklist REVITALIZED:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

.field public static final enum blacklist SCENETYPE_INPUT:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

.field public static final enum blacklist SUGGESTION_ENHANCE_LIST:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;


# instance fields
.field private final blacklist DATA_TYPE:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

.field public final blacklist ID:I

.field private final blacklist ONDEMAND:Z


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;
    .locals 13

    sget-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->PATH_INPUT:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->PATH_RESULT:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v2, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->ANALYZED_FULL:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v3, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->ENHANCE_TYPE:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v4, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->REVITALIZED:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v5, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->SCENETYPE_INPUT:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v6, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->SUGGESTION_ENHANCE_LIST:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v7, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->ENUM_ENHANCE_TYPE:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v8, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->AMOUNT_REMASTER_IMAGES:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v9, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->JPEG_QUALITY:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v10, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->GIF_SAVE_FORMAT:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v11, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->FOCUS_ROI:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v12, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->OUTPUT_BITMAP:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    filled-new-array/range {v0 .. v12}, [Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetDATA_TYPE(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->DATA_TYPE:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetONDEMAND(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->ONDEMAND:Z

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 13

    new-instance v6, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v4, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->STRING:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    const/4 v5, 0x0

    const-string v1, "PATH_INPUT"

    const/4 v2, 0x0

    const/16 v3, 0x3ea

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;-><init>(Ljava/lang/String;IILcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;Z)V

    sput-object v6, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->PATH_INPUT:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v11, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->STRING:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    const/4 v12, 0x0

    const-string v8, "PATH_RESULT"

    const/4 v9, 0x1

    const/16 v10, 0x3eb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;-><init>(Ljava/lang/String;IILcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;Z)V

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->PATH_RESULT:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v5, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->STRING:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    const/4 v6, 0x0

    const-string v2, "ANALYZED_FULL"

    const/4 v3, 0x2

    const/16 v4, 0x835

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;-><init>(Ljava/lang/String;IILcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;Z)V

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->ANALYZED_FULL:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v11, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->STRING:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    const-string v8, "ENHANCE_TYPE"

    const/4 v9, 0x3

    const/16 v10, 0x836

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;-><init>(Ljava/lang/String;IILcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;Z)V

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->ENHANCE_TYPE:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v5, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->STRING:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    const-string v2, "REVITALIZED"

    const/4 v3, 0x4

    const/16 v4, 0x837

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;-><init>(Ljava/lang/String;IILcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;Z)V

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->REVITALIZED:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v11, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->STRING:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    const-string v8, "SCENETYPE_INPUT"

    const/4 v9, 0x5

    const/16 v10, 0x3ed

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;-><init>(Ljava/lang/String;IILcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;Z)V

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->SCENETYPE_INPUT:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v5, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->STRING:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    const-string v2, "SUGGESTION_ENHANCE_LIST"

    const/4 v3, 0x6

    const/16 v4, 0x89a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;-><init>(Ljava/lang/String;IILcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;Z)V

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->SUGGESTION_ENHANCE_LIST:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v11, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->LONG:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    const-string v8, "ENUM_ENHANCE_TYPE"

    const/4 v9, 0x7

    const/16 v10, 0x899

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;-><init>(Ljava/lang/String;IILcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;Z)V

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->ENUM_ENHANCE_TYPE:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v5, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->LONG:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    const-string v2, "AMOUNT_REMASTER_IMAGES"

    const/16 v3, 0x8

    const/16 v4, 0x3ee

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;-><init>(Ljava/lang/String;IILcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;Z)V

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->AMOUNT_REMASTER_IMAGES:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v11, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->LONG:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    const-string v8, "JPEG_QUALITY"

    const/16 v9, 0x9

    const/16 v10, 0x3f0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;-><init>(Ljava/lang/String;IILcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;Z)V

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->JPEG_QUALITY:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v5, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->LONG:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    const-string v2, "GIF_SAVE_FORMAT"

    const/16 v3, 0xa

    const/16 v4, 0x3f2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;-><init>(Ljava/lang/String;IILcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;Z)V

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->GIF_SAVE_FORMAT:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v11, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->STRING:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    const/4 v12, 0x1

    const-string v8, "FOCUS_ROI"

    const/16 v9, 0xb

    const/16 v10, 0x89c

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;-><init>(Ljava/lang/String;IILcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;Z)V

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->FOCUS_ROI:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    new-instance v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    sget-object v5, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;->EXCEPTIONAL:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    const/4 v6, 0x1

    const-string v2, "OUTPUT_BITMAP"

    const/16 v3, 0xc

    const/16 v4, 0x89b

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;-><init>(Ljava/lang/String;IILcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;Z)V

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->OUTPUT_BITMAP:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->$values()[Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->$VALUES:[Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IILcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->ID:I

    iput-object p4, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->DATA_TYPE:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam$ParamDataType;

    iput-boolean p5, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->ONDEMAND:Z

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->$VALUES:[Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    invoke-virtual {v0}, [Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ResultParam;

    return-object v0
.end method
