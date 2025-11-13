.class public final Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final MCCMNC:Ljava/lang/String; = "mccmnc"

.field public static final MNO_NAME:Ljava/lang/String; = "mnoname"

.field public static final SALES_CODE:Ljava/lang/String; = "salescode"

.field public static final TABLE_NAME:Ljava/lang/String; = "match_profile_id"

.field private static final mTableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;->mTableMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mccmnc"

    const-string v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTableMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;->mTableMap:Ljava/util/HashMap;

    return-object v0
.end method
