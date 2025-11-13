.class Landroid/content/res/ResourcesImpl$1;
.super Landroid/content/res/ConfigurationBoundResourceCache;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ConfigurationBoundResourceCache<",
        "Landroid/content/res/ComplexColor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/res/ResourcesImpl;


# direct methods
.method constructor blacklist <init>(Landroid/content/res/ResourcesImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/content/res/ResourcesImpl$1;->this$0:Landroid/content/res/ResourcesImpl;

    invoke-direct {p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onConfigurationChange(I)V
    .locals 1

    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl$1;->clear()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    :goto_0
    return-void
.end method
