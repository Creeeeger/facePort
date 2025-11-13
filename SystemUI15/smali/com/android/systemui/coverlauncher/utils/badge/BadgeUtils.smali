.class public final Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BADGE_URI:Landroid/net/Uri;

.field public static final COLUMNS:[Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;->BADGE_URI:Landroid/net/Uri;

    const-string v0, "class"

    const-string v1, "badgecount"

    const-string v2, "package"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;->mContext:Landroid/content/Context;

    return-void
.end method
