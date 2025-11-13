.class public final Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final label:Ljava/lang/String;

.field public final position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;->label:Ljava/lang/String;

    iput p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;->position:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$SectionInfo;->label:Ljava/lang/String;

    return-object p0
.end method
