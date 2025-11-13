.class public Lcom/samsung/android/globalactions/util/ResourcesWrapper;
.super Ljava/lang/Object;
.source "ResourcesWrapper.java"


# instance fields
.field blacklist mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor blacklist <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public blacklist getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs blacklist getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
