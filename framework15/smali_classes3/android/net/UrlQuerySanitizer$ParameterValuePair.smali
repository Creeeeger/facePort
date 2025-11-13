.class public Landroid/net/UrlQuerySanitizer$ParameterValuePair;
.super Ljava/lang/Object;
.source "UrlQuerySanitizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/UrlQuerySanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParameterValuePair"
.end annotation


# instance fields
.field public whitelist mParameter:Ljava/lang/String;

.field public whitelist mValue:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/net/UrlQuerySanitizer;


# direct methods
.method public constructor whitelist <init>(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->this$0:Landroid/net/UrlQuerySanitizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mParameter:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mValue:Ljava/lang/String;

    return-void
.end method
