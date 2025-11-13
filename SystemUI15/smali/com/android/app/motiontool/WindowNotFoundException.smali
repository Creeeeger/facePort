.class public final Lcom/android/app/motiontool/WindowNotFoundException;
.super Ljava/lang/Exception;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final windowId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/android/app/motiontool/WindowNotFoundException;->windowId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getWindowId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/app/motiontool/WindowNotFoundException;->windowId:Ljava/lang/String;

    return-object p0
.end method
