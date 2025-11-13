.class public final Lcom/android/systemui/volume/util/BluetoothIconServerUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FILE_EXTENSION_SVG:Ljava/lang/String;

.field public static final FILE_NAME_CASE:Ljava/lang/String;

.field public static final FILE_NAME_LEFT:Ljava/lang/String;

.field public static final FILE_NAME_PAIR:Ljava/lang/String;

.field public static final FILE_NAME_RIGHT:Ljava/lang/String;

.field public static final INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconServerUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/util/BluetoothIconServerUtils;

    invoke-direct {v0}, Lcom/android/systemui/volume/util/BluetoothIconServerUtils;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/util/BluetoothIconServerUtils;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconServerUtils;

    const-string v0, "icon_l"

    sput-object v0, Lcom/android/systemui/volume/util/BluetoothIconServerUtils;->FILE_NAME_LEFT:Ljava/lang/String;

    const-string v0, "icon_r"

    sput-object v0, Lcom/android/systemui/volume/util/BluetoothIconServerUtils;->FILE_NAME_RIGHT:Ljava/lang/String;

    const-string v0, "icon_pair"

    sput-object v0, Lcom/android/systemui/volume/util/BluetoothIconServerUtils;->FILE_NAME_PAIR:Ljava/lang/String;

    const-string v0, "icon_case"

    sput-object v0, Lcom/android/systemui/volume/util/BluetoothIconServerUtils;->FILE_NAME_CASE:Ljava/lang/String;

    const-string v0, ".svg"

    sput-object v0, Lcom/android/systemui/volume/util/BluetoothIconServerUtils;->FILE_EXTENSION_SVG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
