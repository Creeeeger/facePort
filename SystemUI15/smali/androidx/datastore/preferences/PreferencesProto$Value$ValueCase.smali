.class public final enum Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

.field public static final enum BOOLEAN:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

.field public static final enum BYTES:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

.field public static final enum DOUBLE:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

.field public static final enum FLOAT:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

.field public static final enum INTEGER:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

.field public static final enum LONG:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

.field public static final enum STRING:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

.field public static final enum STRING_SET:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

.field public static final enum VALUE_NOT_SET:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;->BOOLEAN:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    new-instance v1, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    const-string v4, "FLOAT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;->FLOAT:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    new-instance v3, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    const-string v4, "INTEGER"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;->INTEGER:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    new-instance v4, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    const-string v5, "LONG"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;->LONG:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    new-instance v5, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    const-string v6, "STRING"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;->STRING:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    new-instance v6, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    const-string v7, "STRING_SET"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v8, v9}, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;->STRING_SET:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    new-instance v7, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    const-string v8, "DOUBLE"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v9, v10}, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;->DOUBLE:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    new-instance v8, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    const-string v9, "BYTES"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v10, v11}, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;->BYTES:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    new-instance v9, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    const-string v10, "VALUE_NOT_SET"

    invoke-direct {v9, v10, v11, v2}, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;->VALUE_NOT_SET:Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    filled-new-array/range {v0 .. v8}, [Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;->$VALUES:[Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;
    .locals 1

    const-class v0, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;->$VALUES:[Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    return-object v0
.end method
