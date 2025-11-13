.class public final Landroid/content/pm/ActivityPresentationInfo;
.super Ljava/lang/Object;
.source "ActivityPresentationInfo.java"


# instance fields
.field public final blacklist componentName:Landroid/content/ComponentName;

.field public final blacklist displayId:I

.field public final blacklist taskId:I


# direct methods
.method public constructor blacklist <init>(IILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/pm/ActivityPresentationInfo;->taskId:I

    iput p2, p0, Landroid/content/pm/ActivityPresentationInfo;->displayId:I

    iput-object p3, p0, Landroid/content/pm/ActivityPresentationInfo;->componentName:Landroid/content/ComponentName;

    return-void
.end method
