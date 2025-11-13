.class public interface abstract Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser;
.super Ljava/lang/Object;
.source "MFDescriptorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;
    }
.end annotation


# direct methods
.method public static blacklist of(Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser;
    .locals 2
    .param p0, "type"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 14
    sget-object v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$1;->$SwitchMap$com$samsung$android$sume$core$descriptor$MFDescriptorParser$Type:[I

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unknown type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :pswitch_0
    new-instance v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorJsonParser;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorJsonParser;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract blacklist parse(Ljava/io/InputStream;)Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation
.end method
