.class public final enum Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;
.super Ljava/lang/Enum;
.source "MFDescriptorParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

.field public static final enum blacklist JSON:Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    const-string v1, "JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;->JSON:Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    .line 8
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    aput-object v0, v1, v2

    sput-object v1, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;->$VALUES:[Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 8
    const-class v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;
    .locals 1

    .line 8
    sget-object v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;->$VALUES:[Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    return-object v0
.end method
