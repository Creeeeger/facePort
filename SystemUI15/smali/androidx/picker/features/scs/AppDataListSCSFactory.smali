.class public final Landroidx/picker/features/scs/AppDataListSCSFactory;
.super Landroidx/picker/features/scs/AppDataListBixbyFactory;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/picker/features/scs/AppDataListBixbyFactory;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getAuthority()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.scs.ai.search/v1"

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AppDataListSCSFactory"

    return-object p0
.end method
