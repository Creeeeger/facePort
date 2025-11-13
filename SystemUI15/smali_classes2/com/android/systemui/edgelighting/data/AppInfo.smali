.class public final Lcom/android/systemui/edgelighting/data/AppInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appName:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/AppInfo;->appName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/edgelighting/data/AppInfo;->packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/edgelighting/data/AppInfo;->priority:I

    return-void
.end method
