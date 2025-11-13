.class public final Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;

.field public static final subtitleIdsMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;

    invoke-direct {v0}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;->INSTANCE:Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;->subtitleIdsMap:Ljava/util/HashMap;

    const v1, 0x7f030095

    const-string v2, "internet"

    const v3, 0x7f0300a3

    const-string/jumbo v4, "wifi"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f03008a

    const-string v2, "cell"

    const v3, 0x7f030086

    const-string v4, "battery"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f03008f

    const-string v2, "dnd"

    const v3, 0x7f030091

    const-string v4, "flashlight"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f03009f

    const-string/jumbo v2, "rotation"

    const v3, 0x7f030087

    const-string v4, "bt"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f030084

    const-string v2, "airplane"

    const v3, 0x7f030097

    const-string v4, "location"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f030094

    const-string v2, "hotspot"

    const v3, 0x7f030096

    const-string v4, "inversion"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f0300a0

    const-string/jumbo v2, "saver"

    const v3, 0x7f03008d

    const-string v4, "dark"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f0300a4

    const-string/jumbo v2, "work"

    const v3, 0x7f030089

    const-string v4, "cast"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f030099

    const-string v2, "night"

    const v3, 0x7f0300a1

    const-string/jumbo v4, "screenrecord"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f03009c

    const-string v2, "record_issue"

    const v3, 0x7f03009e

    const-string/jumbo v4, "reverse"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f03009d

    const-string v2, "reduce_brightness"

    const v3, 0x7f030088

    const-string v4, "cameratoggle"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f030098

    const-string v2, "mictoggle"

    const v3, 0x7f03008c

    const-string v4, "controls"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f0300a2

    const-string/jumbo v2, "wallet"

    const v3, 0x7f03009b

    const-string v4, "qr_code_scanner"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f030085

    const-string v2, "alarm"

    const v3, 0x7f03009a

    const-string v4, "onehanded"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f03008b

    const-string v2, "color_correction"

    const v3, 0x7f030090

    const-string v4, "dream"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x7f030092

    const-string v2, "font_scaling"

    const v3, 0x7f030093

    const-string v4, "hearing_devices"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
